.class interface abstract Lcom/parse/ParseObjectCurrentController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearFromDisk()V
.end method

.method public abstract clearFromMemory()V
.end method

.method public abstract existsAsync()La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAsync()La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract isCurrent(Lcom/parse/ParseObject;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract setAsync(Lcom/parse/ParseObject;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
