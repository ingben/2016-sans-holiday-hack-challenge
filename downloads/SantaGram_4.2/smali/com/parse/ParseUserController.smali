.class interface abstract Lcom/parse/ParseUserController;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getUserAsync(Ljava/lang/String;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logInAsync(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logInAsync(Ljava/lang/String;Ljava/lang/String;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logInAsync(Ljava/lang/String;Ljava/util/Map;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestPasswordResetAsync(Ljava/lang/String;)La/j;
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

.method public abstract signUpAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Ljava/lang/String;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method
