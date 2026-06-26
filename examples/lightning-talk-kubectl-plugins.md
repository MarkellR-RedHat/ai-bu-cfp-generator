# Example: Lightning Talk - kubectl Plugins

Generated with: `/lightning-talk three kubectl plugins every platform engineer should install`

---

## Title

3 kubectl Plugins That Will Change Your Monday Morning

## The One Takeaway

Three specific kubectl plugins (kubectl-neat, kubectl-tree, and kubectl-who-can) solve the most common debugging and troubleshooting tasks that platform engineers do manually every day.

## Abstract

You spend 20 minutes every Monday morning untangling a failed deployment. You copy YAML, strip managed fields by hand, trace owner references through three levels of objects, and wonder who granted that service account cluster-admin. Three kubectl plugins, each installable in one command through krew, eliminate that manual work entirely. This talk shows all three in live demos, each under 90 seconds. You will walk out knowing exactly which ones to install and why.

## 5-Minute Outline

**0:00-0:30 - Hook**
"Raise your hand if you have manually deleted managedFields from kubectl output this week." Establish the pain.

**0:30-1:00 - Quick context**
kubectl plugins and krew: one slide, 30 seconds. "If you do not have krew, install it after this talk."

**1:00-2:00 - Plugin 1: kubectl-neat**
Live demo: show raw `kubectl get deployment -o yaml` output (80+ lines of noise). Then show `kubectl neat get deployment -o yaml` (clean, readable output). Before and after on screen.

**2:00-3:00 - Plugin 2: kubectl-tree**
Live demo: `kubectl tree deployment my-app` shows the full ownership hierarchy: Deployment, ReplicaSet, Pods, and their status. Compare to running three separate kubectl commands to trace the same information.

**3:00-4:00 - Plugin 3: kubectl-who-can**
Live demo: `kubectl who-can create pods --namespace production` shows every subject with that permission. Explain why this matters for security audits and RBAC troubleshooting.

**4:00-4:30 - Recap**
One slide with all three plugin names, install commands, and GitHub URLs.

**4:30-5:00 - Call to action**
"Pick one. Install it before your next meeting. You will not go back."

## Learning Objectives

- Deploy kubectl-neat, kubectl-tree, and kubectl-who-can via krew and use them for daily cluster troubleshooting

## Slide Outline

```
Slide 1: Title + "Raise your hand if..."
Slide 2: krew in 10 seconds (one install command)
Slide 3: kubectl-neat before (wall of YAML)
Slide 4: kubectl-neat after (clean output)
Slide 5: kubectl-tree output (ownership hierarchy)
Slide 6: kubectl-who-can output (RBAC check)
Slide 7: All three plugins, install commands, links
Slide 8: "Pick one. Install it before your next meeting."
```

## Target Audience

Platform engineers and developers who use kubectl daily and want to work faster.

## Speaker Bio Template

"[Name] is a [role] at [company] who spends too much time in terminals and not enough time outside."

## Why This Works as a Lightning Talk

The topic is three discrete tools, each demonstrable in under 90 seconds. No background theory is needed. The audience gets immediate, practical value they can act on the same day.
