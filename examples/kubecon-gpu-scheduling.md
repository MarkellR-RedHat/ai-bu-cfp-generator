# Example: KubeCon CFP - GPU Scheduling

Generated with: `/cfp building GPU-aware scheduling for Kubernetes AI workloads, KubeCon`

---

## Title

Scheduling GPUs Without Wasting Them: Lessons from Running 200 AI Training Jobs on Kubernetes

## Abstract

Most Kubernetes clusters waste 40-60% of their GPU capacity. Pods request full GPUs they only partially use, scheduling decisions ignore topology, and teams queue for hours while expensive accelerators sit idle. We hit this wall running machine learning training workloads on a 48-GPU cluster and spent six months building a scheduling layer that cut our GPU waste by half.

This talk walks through how we designed and deployed a GPU-aware scheduling system on Kubernetes using a combination of custom resource definitions, topology-aware scheduling plugins, and real-time utilization metrics from DCGM. We cover the architecture decisions that worked, the ones that did not, and the tradeoffs we made between scheduling speed and placement quality.

You will see how we implemented fractional GPU sharing for inference workloads while reserving whole GPUs for training jobs. We will show our monitoring stack for tracking GPU utilization at the pod level, not just the node level, and how that data feeds back into scheduling decisions.

We will also cover the failures. Our first attempt at bin-packing GPUs caused memory contention that crashed training runs. We will show the debugging process and the topology constraints we added to prevent it.

By the end of this talk, you will have a concrete playbook for improving GPU utilization in your own Kubernetes cluster, whether you are running 8 GPUs or 800.

## Detailed Description / Outline

**0:00-5:00 - The GPU waste problem (5 min)**
- Current state of GPU scheduling in Kubernetes
- Real utilization data from our cluster before optimization
- Why default kube-scheduler fails for GPU workloads

**5:00-12:00 - Architecture of a GPU-aware scheduler (7 min)**
- Custom resource definitions for GPU topology
- Scheduling framework plugins vs. standalone scheduler
- Integration with NVIDIA DCGM for utilization metrics

**12:00-20:00 - Fractional GPU sharing (8 min)**
- MIG (Multi-Instance GPU) vs. time-slicing vs. MPS
- How we implemented fractional sharing for inference pods
- Live demo: deploying two inference workloads on a single A100

**20:00-27:00 - Topology-aware placement (7 min)**
- NVLink topology and why it matters for training
- The bin-packing failure: how we crashed production training
- Topology constraints that fixed it

**27:00-32:00 - Monitoring and feedback loop (5 min)**
- Per-pod GPU utilization with DCGM and Prometheus
- Dashboards that show real vs. requested GPU usage
- Using utilization data to right-size GPU requests

**32:00-35:00 - Results and takeaways (3 min)**
- Before and after: utilization, queue times, cost
- What we would do differently
- Open source components used

## Learning Objectives

- Deploy topology-aware GPU scheduling on a Kubernetes cluster using scheduling framework plugins
- Configure fractional GPU sharing for inference workloads using MIG or time-slicing
- Build a monitoring pipeline that tracks per-pod GPU utilization with DCGM and Prometheus
- Evaluate the tradeoffs between bin-packing density and workload isolation for GPU workloads

## Target Audience and Prerequisites

**Who this is for:** Platform engineers, ML infrastructure teams, and cluster administrators managing GPU workloads on Kubernetes.

**Prerequisites:** Familiarity with Kubernetes scheduling concepts (pods, nodes, resource requests). Basic understanding of what GPUs do in ML workloads. No NVIDIA-specific knowledge required.

**Not required:** Experience with custom schedulers, CUDA programming, or ML model development.

## Session Type

**Talk (35 min)**

The content is best suited for a talk format. The topic has enough depth for 35 minutes but does not require hands-on exercises. A live demo of fractional GPU sharing adds a practical element.

## Speaker Bio Template

"[Name] is a [role] at [company], where they manage Kubernetes infrastructure for machine learning workloads. They have spent the past [N] years building GPU scheduling and resource management systems for production AI platforms."
