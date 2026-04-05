import re
from collections import Counter

def tokenizer_counter(text):

    text = text.lower()
    text = re.sub(r"[^a-z0-9\s]", " ", text)
    ws = text.split()
    w_counts = Counter(ws)
    return dict(sorted(w_counts.items()))