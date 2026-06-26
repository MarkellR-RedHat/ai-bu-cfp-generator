# Example: FOSDEM Deep Technical Talk - eBPF Observability

Generated with: `/cfp using eBPF for production observability without modifying application code, FOSDEM`

---

## Title

Observing Without Touching: Zero-Instrumentation Kubernetes Monitoring with eBPF

## Abstract

A single eBPF program attached to the `tcp_sendmsg` kernel function can extract HTTP request latency, status codes, and payload sizes for every service in a Kubernetes cluster, without modifying a single line of application code. No sidecars, no SDK imports, no redeployments. The kernel already sees everything. You just need to ask it the right questions.

We deployed eBPF-based observability across 14 production Kubernetes clusters running roughly 2,000 services in four languages. This talk covers the architecture we built, from BPF programs attached at the socket and cgroup layers through the userspace collectors that correlate events with Kubernetes metadata via the downward API and conntrack tables.

We will walk through the specific eBPF hook points we use: kprobes on `tcp_sendmsg` and `tcp_cleanup_rbuf` for TCP metrics, tracepoints on `net:net_dev_xmit` for packet-level data, and uprobe attachment for protocol parsing in TLS-terminated connections. You will see how we reconstruct HTTP/2 and gRPC frames from raw socket buffers and why parsing protocol headers in BPF bytecode requires careful stack management to stay within the verifier's 512-byte limit.

We will also cover the failure modes: what happens when a kernel upgrade changes a struct layout your kprobe depends on, how CO-RE and BTF solve that problem (mostly), and where you still need fallbacks. By the end, you will understand how to build a production-grade observability layer that lives entirely in the kernel, requiring zero cooperation from application teams.

## Detailed Description / Outline

**0:00-3:00 - The instrumentation problem (3 min)**
- Why application-level instrumentation does not scale across polyglot environments
- The gap between what the kernel knows and what your monitoring stack sees
- Architecture overview: BPF programs, perf ring buffers, userspace collectors, and Kubernetes metadata enrichment

**3:00-10:00 - eBPF hook points for network observability (7 min)**
- Kprobes on `tcp_sendmsg` and `tcp_cleanup_rbuf`: capturing TCP-level send/receive events
- Tracepoints on `net:net_dev_xmit` for packet-level telemetry
- Cgroup-level attachment for per-pod network accounting
- Diagram: data flow from syscall through BPF program to perf ring buffer to userspace collector
- How conntrack entries map socket events to Kubernetes service IPs and pod identities

**10:00-18:00 - Protocol parsing in BPF (8 min)**
- Reading HTTP/1.1 request lines and headers from socket buffers
- Reconstructing HTTP/2 frames: handling HPACK-compressed headers within BPF's stack constraints
- gRPC status extraction from HTTP/2 trailers
- The 512-byte stack limit: how to structure BPF programs that parse multi-layer protocols
- TLS interception via uprobes on OpenSSL's `SSL_read` and `SSL_write`

**18:00-24:00 - Kubernetes metadata correlation (6 min)**
- Mapping cgroup IDs to pod names, namespaces, and labels
- Using the container runtime's cgroup hierarchy for container-level attribution
- Enriching BPF events with service mesh metadata (mTLS certificate identity)
- Performance cost: how we keep userspace enrichment under 2ms p99 per event

**24:00-30:00 - Portability and failure modes (6 min)**
- CO-RE (Compile Once, Run Everywhere) and BTF: how they work, where they break
- Kernel version matrix: which hook points are available on which kernels
- Handling struct layout changes across kernel versions
- Fallback strategies when BTF is unavailable (RHEL 8 vs. RHEL 9 differences)

**30:00-33:00 - Production results and performance overhead (3 min)**
- CPU overhead: less than 1.5% additional utilization per node across our fleet
- Metrics coverage: what we capture versus what requires application-level instrumentation
- Before and after: mean time to detect latency regressions dropped from 12 minutes to 45 seconds

**33:00-35:00 - Takeaways (2 min)**
- When eBPF-based observability is the right choice and when it is not
- Open source tools and libraries referenced (Cilium, bpftool, libbpf, btfhub)
- Starting points for your own deployment

## Learning Objectives

- Identify the kernel hook points (kprobes, tracepoints, cgroup attachments, uprobes) appropriate for different observability use cases in Kubernetes
- Implement protocol parsing within eBPF programs while staying within verifier constraints, including stack size limits and bounded loop requirements
- Build a metadata enrichment pipeline that correlates raw BPF socket events with Kubernetes pod identity using cgroup IDs and conntrack tables
- Evaluate the portability tradeoffs of CO-RE and BTF across kernel versions and plan fallback strategies for environments without BTF support

## Target Audience and Prerequisites

**Who this is for:** Systems engineers, SREs, and kernel/networking engineers who manage Kubernetes infrastructure and want to understand how eBPF can replace or supplement traditional monitoring agents.

**Prerequisites:** Solid understanding of Linux networking fundamentals (sockets, TCP/IP stack, netfilter). Working knowledge of Kubernetes networking (services, pods, CNI). Familiarity with the concept of eBPF is helpful but not required. The talk explains the relevant BPF subsystem internals.

**Not required:** Prior experience writing BPF programs, C programming, or kernel development.

## Session Type

**Devroom Talk (35 min)**

Best suited for the Monitoring and Observability devroom or the Containers and Virtualization devroom at FOSDEM. The content is dense and technical, appropriate for FOSDEM's engineering audience. No hands-on component needed. Live terminal demos showing BPF program output add practical grounding.

## Speaker Bio Template

"[Name] is a [role] at [company], focused on kernel-level observability for container platforms. They have spent [N] years working on eBPF-based monitoring tools and have contributed to [relevant project, e.g., Cilium, bcc, libbpf]. They maintain [N] production Kubernetes clusters and spend most of their time reading kernel source code."
