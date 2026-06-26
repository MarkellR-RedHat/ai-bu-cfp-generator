# Example: KubeCon Tutorial - Service Mesh from Scratch

Generated with: `/workshop-proposal deploying and troubleshooting a service mesh on Kubernetes, KubeCon`

---

## Title

Service Mesh from Scratch: Deploy, Break, and Fix Istio on Kubernetes in 90 Minutes

## Abstract

Your team just adopted microservices. Suddenly, every debugging session starts with the same questions: which service called which? Why is this request failing intermittently? Is traffic actually encrypted between these two pods? You add retry logic to one service, then another, then realize you are implementing the same network resilience patterns in four different languages across twelve repositories.

A service mesh solves these problems by moving networking concerns out of application code and into the infrastructure layer. But deploying one for the first time is intimidating. The documentation assumes you already understand sidecar injection, mTLS certificate rotation, control plane architecture, and a dozen custom resources you have never seen before.

This hands-on tutorial strips away that complexity. You will deploy Istio on a real Kubernetes cluster, configure traffic routing between services, enable mutual TLS, set up observability with distributed tracing, and then deliberately break things so you can practice troubleshooting. Every section ends with a checkpoint where you verify that your configuration is working before moving on.

By the end of 90 minutes, you will have a working service mesh with traffic management, security policies, and observability. More importantly, you will understand what each component does, so when something breaks in production, you know where to look.

## Prerequisites

- Working knowledge of Kubernetes: comfortable with `kubectl`, deployments, services, namespaces, and pod networking basics
- Familiarity with YAML configuration for Kubernetes resources
- A laptop with `kubectl` installed and access to a provided lab cluster (details sent before the session)
- No prior service mesh experience required

## Materials List

- Lab cluster access credentials (provided 24 hours before the tutorial)
- Pre-built container images for a sample microservice application (3 services: frontend, catalog, ordering)
- Tutorial workbook with all commands, expected outputs, and checkpoint verification steps
- GitHub repository with all configuration files, organized by tutorial section
- Cheat sheet: Istio CLI commands and common troubleshooting patterns

## Step-by-Step Outline with Timing

**0:00-5:00 - Setup and environment verification (5 min)**
- Verify cluster access and kubectl connectivity
- Deploy the sample application (3 microservices) without a service mesh
- Generate traffic and observe baseline behavior: no encryption, no traffic visibility, no retry logic
- Checkpoint: all three services are running, and you can curl the frontend

**5:00-20:00 - Install Istio and enable sidecar injection (15 min)**
- Install Istio using `istioctl` with the demo profile
- Walk through what the control plane components do: istiod (Pilot, Citadel, Galley merged), ingress gateway
- Enable automatic sidecar injection on the application namespace
- Restart the application pods and verify sidecar containers are running
- Examine the Envoy proxy configuration with `istioctl proxy-config`
- Checkpoint: every application pod has 2/2 containers (application + sidecar), and `istioctl analyze` reports no issues

**20:00-35:00 - Traffic management: routing and canary deployments (15 min)**
- Deploy v2 of the catalog service alongside v1
- Create VirtualService and DestinationRule resources to split traffic 80/20
- Generate traffic and observe the split using Kiali's traffic graph
- Shift traffic to 100% v2 and verify
- Add a 3-second timeout and automatic retries to the ordering service route
- Checkpoint: traffic is splitting correctly, and `kubectl get virtualservice` shows your routing rules

**35:00-50:00 - Security: mutual TLS and authorization policies (15 min)**
- Inspect the current mTLS state using `istioctl authn tls-check`
- Enable STRICT mTLS across the mesh with a PeerAuthentication policy
- Verify encryption by examining Envoy access logs for TLS handshake indicators
- Create an AuthorizationPolicy that restricts which services can call the ordering service
- Test the policy: frontend can reach ordering, but direct curl from a non-mesh pod is denied
- Checkpoint: `istioctl authn tls-check` shows STRICT for all services, and the authorization policy correctly blocks unauthorized access

**50:00-65:00 - Observability: metrics, tracing, and visualization (15 min)**
- Deploy Kiali, Jaeger, and Grafana from the Istio addons directory
- Generate traffic and explore the service graph in Kiali
- Trace a request across all three services in Jaeger: understand trace context propagation
- Review Istio's built-in metrics in Grafana: request rate, error rate, latency (RED metrics)
- Examine Envoy access logs for detailed per-request information
- Checkpoint: you can see all three services in Kiali, traces appear in Jaeger, and Grafana dashboards show live metrics

**65:00-80:00 - Troubleshooting: break it and fix it (15 min)**
- Scenario 1: Misconfigured VirtualService causes 503 errors. Diagnose with `istioctl analyze` and Envoy logs. Fix the routing rule.
- Scenario 2: mTLS misconfiguration causes connection failures between services. Use `istioctl proxy-config` to identify the certificate mismatch. Correct the PeerAuthentication policy.
- Scenario 3: A service is receiving traffic it should not get. Trace the issue through AuthorizationPolicy configuration. Apply the correct policy.
- Checkpoint: all three scenarios resolved, services healthy, `istioctl analyze` shows no warnings

**80:00-90:00 - Wrap-up: production readiness and next steps (10 min)**
- What changes between tutorial setup and production deployment (resource limits, high availability, certificate management)
- Review of all resources created during the tutorial
- Common operational patterns: canary rollouts with Flagger, progressive delivery with Argo Rollouts
- Where to go next: Istio documentation, community Slack, upstream contribution opportunities
- Q&A

## Learning Objectives

- Install and configure Istio on a Kubernetes cluster, including sidecar injection, ingress gateway setup, and control plane verification
- Implement traffic management policies using VirtualService and DestinationRule resources for canary deployments, timeouts, and retries
- Enable and verify mutual TLS encryption across a service mesh and configure AuthorizationPolicy resources for service-to-service access control
- Deploy and use observability tools (Kiali, Jaeger, Grafana) to visualize service topology, trace distributed requests, and monitor RED metrics
- Diagnose and resolve common service mesh misconfigurations using `istioctl analyze`, `istioctl proxy-config`, and Envoy access logs

## What Attendees Walk Away With

- A working, fully configured service mesh on their lab cluster with traffic management, mTLS, authorization policies, and observability
- A tutorial workbook with all commands, expected outputs, and checkpoint verification steps that can be reused for future deployments
- A troubleshooting cheat sheet covering the most common Istio misconfigurations and their diagnostic commands
- Hands-on experience breaking and fixing a service mesh, which is the skill that matters most in production
- A GitHub repository with all configuration files, organized by section, that can serve as a starting template for their own clusters

## Target Audience

**Who this is for:** Platform engineers, SREs, and backend developers who are evaluating or beginning to adopt a service mesh for their Kubernetes environments. This tutorial is designed for people who learn by doing.

**Experience level:** Intermediate Kubernetes users. You should be comfortable creating deployments and services with kubectl and reading Kubernetes YAML, but no service mesh experience is expected.

**Not ideal for:** People already running a service mesh in production. This tutorial covers fundamentals, not advanced operational patterns.

## Session Type

**Tutorial (90 min)**

This is a hands-on, instructor-led tutorial requiring lab cluster access for each attendee. The format is structured around checkpoints: attendees complete each section, verify their setup, and move on. Assistants (1 per 15 attendees) help anyone who falls behind. The checkpoint model ensures that attendees who work at different speeds all reach a working state at each stage before the group moves forward.

## Speaker Bio Template

"[Name] is a [role] at [company], where they operate service mesh infrastructure across [N] Kubernetes clusters. They have spent [N] years helping platform teams adopt and troubleshoot Istio in production and have contributed to [relevant project]. They believe the best way to learn infrastructure is to break it on purpose."
