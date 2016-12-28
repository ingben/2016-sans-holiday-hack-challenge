.class Lcom/parse/ParseFile$12;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->fetchInBackground(Lcom/parse/ProgressCallback;La/j;La/j;)La/j;
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
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$cancellationToken:La/j;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;La/j;Lcom/parse/ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$12;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$12;->val$cancellationToken:La/j;

    iput-object p3, p0, Lcom/parse/ParseFile$12;->val$progressCallback:Lcom/parse/ProgressCallback;

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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseFile$12;->val$cancellationToken:La/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseFile$12;->val$cancellationToken:La/j;

    invoke-virtual {v0}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/parse/ParseFile;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$12;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;
    invoke-static {v1}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Lcom/parse/ParseFile$State;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/ParseFile$12;->val$progressCallback:Lcom/parse/ProgressCallback;

    # invokes: Lcom/parse/ParseFile;->progressCallbackOnMainThread(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;
    invoke-static {v3}, Lcom/parse/ParseFile;->access$500(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseFile$12;->val$cancellationToken:La/j;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parse/ParseFileController;->fetchAsync(Lcom/parse/ParseFile$State;Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$12;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
