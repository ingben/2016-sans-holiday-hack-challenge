.class interface abstract Lcom/parse/CacheQueryController$CommandDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/CacheQueryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CommandDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract runFromCacheAsync()La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract runOnNetworkAsync(Z)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "La/j",
            "<TT;>;"
        }
    .end annotation
.end method
