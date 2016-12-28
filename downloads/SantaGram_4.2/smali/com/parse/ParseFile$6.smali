.class Lcom/parse/ParseFile$6;
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
        "<[B",
        "La/j",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$cts:La/k;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;La/k;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$6;->val$cts:La/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<[B>;)",
            "La/j",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseFile$6;->val$cts:La/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/k;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/parse/ParseFile$6;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseFile;->access$600(Lcom/parse/ParseFile;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$6;->val$cts:La/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$6;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
