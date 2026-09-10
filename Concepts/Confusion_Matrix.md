# Confusion Matrix — Explained

A **confusion matrix** is a table that shows how a model's predictions compare to the real answers, split into 4 categories — so you can see exactly where it's right and where it's wrong.

---

## The 4 boxes

For a Yes/No prediction (like "is this spam?"):

| | Predicted: Yes | Predicted: No |
|---|---|---|
| **Actually: Yes** | True Positive (TP) | False Negative (FN) |
| **Actually: No** | False Positive (FP) | True Negative (TN) |

- **True Positive (TP)** — model said yes, and it really was yes.
- **True Negative (TN)** — model said no, and it really was no.
- **False Positive (FP)** — model said yes, but it was actually no. (a false alarm)
- **False Negative (FN)** — model said no, but it was actually yes. (a missed case)

---

## Example 1: Spam filter (100 emails)

| | Predicted: Spam | Predicted: Not Spam |
|---|---|---|
| **Actually Spam** | 30 (TP) | 5 (FN) |
| **Actually Not Spam** | 4 (FP) | 61 (TN) |

Reading it:
- 30 spam emails correctly caught
- 5 spam emails missed (slipped into inbox)
- 4 normal emails wrongly sent to spam
- 61 normal emails correctly kept

Here a **false positive** (a real email marked as spam) can be worse than letting one spam email through — you might miss something important.

---

## Example 2: Factory defect detection (200 items)

| | Predicted: Defective | Predicted: Good |
|---|---|---|
| **Actually Defective** | 15 (TP) | 5 (FN) |
| **Actually Good** | 10 (FP) | 170 (TN) |

Reading it:
- **15 (TP):** Defective items correctly caught and pulled off the line.
- **5 (FN):** Defective items that slipped through and got shipped to customers — the risky mistake.
- **10 (FP):** Good items wrongly flagged as defective and thrown out — wasted product, but not dangerous.
- **170 (TN):** Good items correctly passed through.

A **false negative** (a broken item shipped to a customer) is usually far worse than a **false positive** (a good item thrown out by mistake) — so factories often tune inspection to catch more defects, even if it means tossing out a few good items.

---

## Example 3: Airport security screening

| | Predicted: Threat | Predicted: No Threat |
|---|---|---|
| **Actually a Threat** | Caught it (TP) | Missed it (FN) — very dangerous |
| **Actually Safe** | Extra pat-down (FP) — annoying | Passed through fine (TN) |

A **false negative** (missing a real threat) is treated as far more serious than a **false positive** (extra screening for an innocent passenger) — which is why airport security tends to err on the side of more false alarms.

---

## Example 4: COVID test (100 patients)

| | Predicted: Positive | Predicted: Negative |
|---|---|---|
| **Actual: Positive** | 18 (TP) | 2 (FN) |
| **Actual: Negative** | 3 (FP) | 77 (TN) |

Here a **false negative** (missed infection) is more dangerous than a false positive — tests are often tuned to catch more cases even at the cost of more false alarms.
