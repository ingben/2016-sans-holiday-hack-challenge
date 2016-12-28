.class Lcom/parse/ParsePinningEventuallyQueue$5$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$5;->then(La/j;)La/j;
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
        "Lcom/parse/EventuallyPin;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$5;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$5;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

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
            "Lcom/parse/EventuallyPin;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/EventuallyPin;

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v0, v2, :cond_0

    const-string v0, "ParsePinningEventuallyQueue"

    const-string v2, "Unable to save command for later."

    invoke-static {v0, v2, v1}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$5;->val$tcs:La/k;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()La/j;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$300(Lcom/parse/ParsePinningEventuallyQueue;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$5$1;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    invoke-virtual {p1}, La/j;->k()La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$5$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
