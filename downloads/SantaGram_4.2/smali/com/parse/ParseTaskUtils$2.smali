.class final Lcom/parse/ParseTaskUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;Z)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/ParseCallback2;

.field final synthetic val$reportCancellation:Z

.field final synthetic val$tcs:La/k;


# direct methods
.method constructor <init>(ZLa/k;Lcom/parse/ParseCallback2;)V
    .locals 0

    iput-boolean p1, p0, Lcom/parse/ParseTaskUtils$2;->val$reportCancellation:Z

    iput-object p2, p0, Lcom/parse/ParseTaskUtils$2;->val$tcs:La/k;

    iput-object p3, p0, Lcom/parse/ParseTaskUtils$2;->val$callback:Lcom/parse/ParseCallback2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseTaskUtils$2;->then(La/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(La/j;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/ParseTaskUtils$2;->val$reportCancellation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseTaskUtils$2;->val$tcs:La/k;

    invoke-virtual {v0}, La/k;->c()V

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/parse/ParseExecutors;->main()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseTaskUtils$2$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseTaskUtils$2$1;-><init>(Lcom/parse/ParseTaskUtils$2;La/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
