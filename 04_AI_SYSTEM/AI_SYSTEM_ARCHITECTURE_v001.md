# AI System Architecture

**Document ID:** AI-ARCH-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the repository-level architecture for AI-assisted content and production workflows.

## Core Principle

The AI system operates on canonical project contracts and must not silently redefine universe rules, character identity, canonical references, scene requirements, or production approval rules.

## System Flow

Master Universe →’ Content System →’ Scene Specification →’ Character Resolution →’ Production Generation →’ QC →’ Assembly

## Agent Layer

Agents may assist with idea development, script drafting, scene specification, validation, prompt generation, QC assistance, and metadata preparation. Agents are not authorities over canonical project documents.

## Prompt Layer

Prompts provide reusable implementation instructions and are subordinate to higher-level canonical documents.

## Automation Layer

Automation connects approved workflow stages while preserving IDs, status, traceability, approval state, canonical references, and source information.

## Character Resolution

@Leo →’ CHAR-01 →’ LEO-REF-001
@Maya →’ CHAR-02 →’ MAYA-REF-001
@Benny →’ CHAR-03 →’ BENNY-REF-001
@Sunny →’ CHAR-04 →’ SUNNY-REF-001
@Nora →’ CHAR-05 →’ NORA-REF-001

External generation platforms own their invocation mechanics.

## Scene Contract

AI generation consumes validated scene specifications defined by the Scene Specification Standard.

## Separation of Responsibilities

Content answers: **What are we making?**

Scene specification answers: **What must happen in this scene?**

Character system answers: **Who is the character and what must remain locked?**

AI generation answers: **How can the specified scene be generated?**

QC answers: **Does the generated result satisfy the contract?**

## Canonical Principle

**AI accelerates execution; canonical documents control identity and intent.**

## Revision Policy

This architecture is CANONICAL / LOCKED. Changes require explicit AI-system revision.
