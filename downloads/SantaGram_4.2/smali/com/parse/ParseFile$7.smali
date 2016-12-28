.class Lcom/parse/ParseFile$7;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)La/j;
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
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$cts:La/k;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;La/k;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$7;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$7;->val$progressCallback:Lcom/parse/ProgressCallback;

    iput-object p3, p0, Lcom/parse/ParseFile$7;->val$cts:La/k;

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
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseFile$7;->this$0:Lcom/parse/ParseFile;

    iget-object v1, p0, Lcom/parse/ParseFile$7;->val$progressCallback:Lcom/parse/ProgressCallback;

    iget-object v2, p0, Lcom/parse/ParseFile$7;->val$cts:La/k;

    invoke-virtual {v2}, La/k;->a()La/j;

    move-result-object v2

    # invokes: Lcom/parse/ParseFile;->fetchInBackground(Lcom/parse/ProgressCallback;La/j;La/j;)La/j;
    invoke-static {v0, v1, p1, v2}, Lcom/parse/ParseFile;->access$800(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;La/j;La/j;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$7$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$7$1;-><init>(Lcom/parse/ParseFile$7;)V

    invoke-virtual {v0, v1}, La/j;->c(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$7;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
