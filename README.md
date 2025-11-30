# Standard Agent Protocol (SAP) Initiative

## 💡 The Problem: Fragmentation
The AI Agent landscape is fractured. Developers must choose between frameworks like LangChain, AutoGen, CrewAI, and proprietary platforms. This leads to vendor lock-in, poor interoperability, and complex deployment.

## 🚀 The Solution: The Standard Agent Protocol (SAP)
SAP is **not another agent framework**. It is a **universal contract** that defines how any agent—regardless of its underlying code—must expose its identity, capabilities, and execution interface.

SAP creates the foundation for a "Universal Agent Manager" that can deploy, orchestrate, and manage any SAP-compliant agent.

## 📝 The Core Contract Files

### 1. `manifest.yaml`
This is the mandatory **Agent Manifest**. It uses a standardized schema to define an agent's: `agent_id`, `capabilities`, and `execution` requirements.

### 2. Standardized API Endpoints
Any SAP-compliant agent must expose two simple web endpoints:
* `GET /agent/manifest`: Returns the `manifest.yaml` content for discovery.
* `POST /agent/run`: Accepts a standardized task and executes the agent's core task.

## ✅ Validation Status: Ready for Implementation

The core proof-of-concept code has been validated against the Standard Agent Protocol (SAP) specifications to ensure structural integrity.

| Component | SAP Requirement | Status | Rationale |
| :--- | :--- | :--- | :--- |
| `manifest.yaml` | Standardized Definition | **PASS** | Successfully defines the Agent ID, tools, and execution environment. |
| `agent_app.py` | `GET /manifest` Endpoint | **PASS** | Correctly exposes the standardized Agent Manifest for discovery. |
| `agent_app.py` | `POST /run` Endpoint | **PASS** | Correctly accepts an objective and returns a standardized, structured result payload. |
| `requirements.txt` | Dependency Completeness | **PASS** | Lists all necessary libraries (`Flask`, `PyYAML`). |

## 🧑‍💻 Get Started
1. Save the files and upload them to your repository.
2. Clone the repository and install dependencies: `pip install -r requirements.txt`
3. Run the example: `python agent_app.py`

---
**Join the discussion!** Help us build the standard the industry needs.
