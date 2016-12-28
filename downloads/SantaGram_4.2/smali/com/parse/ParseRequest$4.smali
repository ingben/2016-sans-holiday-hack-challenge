.class Lcom/parse/ParseRequest$4;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;IJLcom/parse/ProgressCallback;La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TResponse;",
        "La/j",
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$attemptsMade:I

.field final synthetic val$cancellationToken:La/j;

.field final synthetic val$client:Lcom/parse/ParseHttpClient;

.field final synthetic val$delay:J

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$request:Lcom/parse/a/b;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;La/j;IJLcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRequest$4;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$4;->val$cancellationToken:La/j;

    iput p3, p0, Lcom/parse/ParseRequest$4;->val$attemptsMade:I

    iput-wide p4, p0, Lcom/parse/ParseRequest$4;->val$delay:J

    iput-object p6, p0, Lcom/parse/ParseRequest$4;->val$client:Lcom/parse/ParseHttpClient;

    iput-object p7, p0, Lcom/parse/ParseRequest$4;->val$request:Lcom/parse/a/b;

    iput-object p8, p0, Lcom/parse/ParseRequest$4;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<TResponse;>;)",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1}, La/j;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseRequest$4;->val$cancellationToken:La/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parse/ParseRequest$4;->val$cancellationToken:La/j;

    invoke-virtual {v1}, La/j;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, La/j;->i()La/j;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    instance-of v1, v0, Lcom/parse/ParseRequest$ParseRequestException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/parse/ParseRequest$ParseRequestException;

    iget-boolean v0, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    if-nez v0, :cond_0

    :cond_2
    iget v0, p0, Lcom/parse/ParseRequest$4;->val$attemptsMade:I

    iget-object v1, p0, Lcom/parse/ParseRequest$4;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->maxRetries:I
    invoke-static {v1}, Lcom/parse/ParseRequest;->access$000(Lcom/parse/ParseRequest;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v0, "com.parse.ParseRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed. Waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/parse/ParseRequest$4;->val$delay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds before attempt #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parse/ParseRequest$4;->val$attemptsMade:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    invoke-static {}, Lcom/parse/ParseExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$4$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseRequest$4$1;-><init>(Lcom/parse/ParseRequest$4;La/k;)V

    iget-wide v4, p0, Lcom/parse/ParseRequest$4;->val$delay:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$4;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
