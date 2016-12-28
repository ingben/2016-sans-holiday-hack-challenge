.class Lcom/parse/ParseFile$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;La/j;)La/j;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$cancellationToken:La/j;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$uploadProgressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;La/j;Ljava/lang/String;Lcom/parse/ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:La/j;

    iput-object p3, p0, Lcom/parse/ParseFile$2;->val$sessionToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseFile$2;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:La/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:La/j;

    invoke-virtual {v0}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iget-object v0, v0, Lcom/parse/ParseFile;->data:[B

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/ParseFile;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;
    invoke-static {v1}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Lcom/parse/ParseFile$State;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->data:[B

    iget-object v3, p0, Lcom/parse/ParseFile$2;->val$sessionToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseFile$2;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseFile;->progressCallbackOnMainThread(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;
    invoke-static {v4}, Lcom/parse/ParseFile;->access$500(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:La/j;

    invoke-virtual/range {v0 .. v5}, Lcom/parse/ParseFileController;->saveAsync(Lcom/parse/ParseFile$State;[BLjava/lang/String;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/parse/ParseFile$2$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$2$1;-><init>(Lcom/parse/ParseFile$2;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/parse/ParseFile;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;
    invoke-static {v1}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Lcom/parse/ParseFile$State;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->file:Ljava/io/File;

    iget-object v3, p0, Lcom/parse/ParseFile$2;->val$sessionToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseFile$2;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseFile;->progressCallbackOnMainThread(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;
    invoke-static {v4}, Lcom/parse/ParseFile;->access$500(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:La/j;

    invoke-virtual/range {v0 .. v5}, Lcom/parse/ParseFileController;->saveAsync(Lcom/parse/ParseFile$State;Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
