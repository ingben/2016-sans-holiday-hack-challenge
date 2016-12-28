.class Lcom/parse/ParsePinningEventuallyQueue$13$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$13;->then(La/j;)La/j;
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
        "La/j",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$13;ILcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iput p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$type:I

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)La/j;
    invoke-static {v0, v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->access$1400(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    const-string v1, "_eventuallyPin"

    invoke-virtual {v0, v1}, Lcom/parse/EventuallyPin;->unpinInBackground(Ljava/lang/String;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;La/j;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;La/j;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
