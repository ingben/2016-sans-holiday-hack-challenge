.class Lcom/parse/ParsePinningEventuallyQueue$13;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)La/j;
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
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$eventuallyPin:Lcom/parse/EventuallyPin;

.field final synthetic val$operationSet:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getType()I

    move-result v1

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getObject()Lcom/parse/ParseObject;

    move-result-object v2

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->httpClient:Lcom/parse/ParseHttpClient;
    invoke-static {v3}, Lcom/parse/ParsePinningEventuallyQueue;->access$1300(Lcom/parse/ParsePinningEventuallyQueue;)Lcom/parse/ParseHttpClient;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v3, v4, v0}, Lcom/parse/ParseObject;->saveAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseOperationSet;Ljava/lang/String;)La/j;

    move-result-object v0

    :goto_0
    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$13$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/parse/ParsePinningEventuallyQueue$13$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13;ILcom/parse/ParseObject;)V

    invoke-virtual {v0, v3}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->j()La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getCommand()Lcom/parse/ParseRESTCommand;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->httpClient:Lcom/parse/ParseHttpClient;
    invoke-static {v3}, Lcom/parse/ParsePinningEventuallyQueue;->access$1300(Lcom/parse/ParsePinningEventuallyQueue;)Lcom/parse/ParseHttpClient;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
