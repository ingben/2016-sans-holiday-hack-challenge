.class interface abstract Lcom/parse/ParseSessionController;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getSessionAsync(Ljava/lang/String;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract revokeAsync(Ljava/lang/String;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract upgradeToRevocable(Ljava/lang/String;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation
.end method
