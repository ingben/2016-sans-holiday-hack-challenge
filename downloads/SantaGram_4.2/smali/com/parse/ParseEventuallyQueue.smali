.class abstract Lcom/parse/ParseEventuallyQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseEventuallyQueue$TestHelper;
    }
.end annotation


# instance fields
.field private isConnected:Z

.field private testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method protected commandFromJSON(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->isValidCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->fromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->isValidOldFormatCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Failed to load command from JSON."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method

.method fakeObjectUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(I)V

    :cond_0
    return-void
.end method

.method public getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/parse/ParseEventuallyQueue$TestHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;-><init>(Lcom/parse/ParseEventuallyQueue$1;)V

    iput-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseEventuallyQueue;->isConnected:Z

    return v0
.end method

.method protected notifyTestHelper(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseEventuallyQueue;->notifyTestHelper(ILjava/lang/Throwable;)V

    return-void
.end method

.method protected notifyTestHelper(ILjava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue;->testHelper:Lcom/parse/ParseEventuallyQueue$TestHelper;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public abstract onDestroy()V
.end method

.method public abstract pause()V
.end method

.method public abstract pendingCount()I
.end method

.method public abstract resume()V
.end method

.method public setConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/parse/ParseEventuallyQueue;->isConnected:Z

    return-void
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 0

    return-void
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 0

    return-void
.end method

.method abstract simulateReboot()V
.end method

.method waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/EventuallyPin;",
            ")",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    return-object v0
.end method
