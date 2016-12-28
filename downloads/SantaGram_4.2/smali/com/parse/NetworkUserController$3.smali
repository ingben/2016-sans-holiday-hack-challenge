.class Lcom/parse/NetworkUserController$3;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkUserController;->logInAsync(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Lorg/json/JSONObject;",
        "Lcom/parse/ParseUser$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/NetworkUserController;

.field final synthetic val$command:Lcom/parse/ParseRESTUserCommand;


# direct methods
.method constructor <init>(Lcom/parse/NetworkUserController;Lcom/parse/ParseRESTUserCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/NetworkUserController$3;->this$0:Lcom/parse/NetworkUserController;

    iput-object p2, p0, Lcom/parse/NetworkUserController$3;->val$command:Lcom/parse/ParseRESTUserCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParseUser$State;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseUser$State;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/parse/NetworkUserController$3;->val$command:Lcom/parse/ParseRESTUserCommand;

    invoke-virtual {v3}, Lcom/parse/ParseRESTUserCommand;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_0

    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/parse/NetworkUserController$3;->this$0:Lcom/parse/NetworkUserController;

    # getter for: Lcom/parse/NetworkUserController;->coder:Lcom/parse/ParseObjectCoder;
    invoke-static {v2}, Lcom/parse/NetworkUserController;->access$000(Lcom/parse/NetworkUserController;)Lcom/parse/ParseObjectCoder;

    move-result-object v2

    new-instance v4, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v4}, Lcom/parse/ParseUser$State$Builder;-><init>()V

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v5

    invoke-virtual {v2, v4, v0, v5}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    invoke-virtual {v0, v3}, Lcom/parse/ParseUser$State$Builder;->isNew(Z)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/NetworkUserController$3;->then(La/j;)Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method
