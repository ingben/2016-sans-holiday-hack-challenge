.class interface abstract Lcom/parse/ParseCurrentUserController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ParseObjectCurrentController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseObjectCurrentController",
        "<",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAsync(Z)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentSessionTokenAsync()La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logOutAsync()La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setIfNeededAsync(Lcom/parse/ParseUser;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
