.class Lcom/parse/ParsePinningEventuallyQueue$10$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$10;->then(La/j;)La/j;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$10;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$10;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v0, v1, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/j;->k()La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v0, v2, :cond_1

    const-string v0, "ParsePinningEventuallyQueue"

    const-string v2, "Failed to run command."

    invoke-static {v0, v2, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(ILjava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$10;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v2}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    invoke-virtual {p1}, La/j;->k()La/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$10$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$10;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
