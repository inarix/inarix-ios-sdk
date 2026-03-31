# Changelog

Release names match the **InarixSDK** XCFramework version in `Package.swift` (Swift Package Manager). Update this file whenever you ship a new binary so integrators know what changed.

## v0.8.6-exp

- Assisted image capture v2: species detection, clearer auto vs manual capture, and improved quality feedback and analytics.
- Dependencies: [PostHog iOS](https://github.com/PostHog/posthog-ios) SPM requirement updated to **3.48.3** and above (see `Package.swift`).

## v0.8.4-exp

- Scenario player: more reliable handling when the flow is terminated (`.terminate`).

## v0.8.3-exp

- Connectivity checks: optional probe and configurable intervals (less noisy offline detection).
- Localization: extra locales and fixes for German and Spanish.

## v0.8.2-exp

- Localization: strings for slow connection and waiting/delay messaging.

## v0.8.1-exp

- Connectivity: offline/slow-connection awareness with a banner and clearer behaviour during analysis and modular actions.
- Diagnostics: clearer network-related information when a step fails (easier support and debugging).

## v0.7.9-exp

- **Minimum iOS version is now 16.0** (required for current framework APIs).

## v0.7.7-exp / v0.7.8-exp

- Long-running analysis: progress polling and user-facing delay messaging (IIE v3–style flow).
- Broader analytics around analysis and modular actions.

## v0.6.6-beta

- Stability and UX fixes across assisted capture, scenario player, declarations, and storage.
- Localisation and accessibility fixes on key steps.

## v0.6.5-beta — v0.6.1-beta

- Assisted capture: guidelines, flash/camera lifecycle, device-specific fixes, and tracking cleanup.
- Declarations, identification, and storage: validation and UI fixes.

## v0.6.0-beta

- Assisted capture updates; removed legacy on-device ML assets (smaller footprint).
- Timezone and permission-related fixes.

## v0.5.x

- Assisted hybrid capture, image-quality tuning, and experimental camera options.
- Grainwise-related flows, storage choice, and offline validation behavior.

## v0.4.x — v0.3.x

- Token refresh controls, localization, modular actions and result cards, camera permission and stability fixes.
- Analytics and host-app compatibility improvements.

## v0.2.0-alpha — v0.2.1-alpha

- Public `InarixSDK` entry point with `ScenarioPlayer` / `ScenarioPlayerView`.
- Staging API via `setDevMode()` fix.

## v0.1.3-alpha — v0.1.8-alpha

- Initial packaged SDK and CI/CD for builds.
