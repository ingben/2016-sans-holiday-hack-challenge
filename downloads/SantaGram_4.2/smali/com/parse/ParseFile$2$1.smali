.class Lcom/parse/ParseFile$2$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$2;->then(La/j;)La/j;
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
        "Lcom/parse/ParseFile$State;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$2;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$2;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$2$1;->this$1:Lcom/parse/ParseFile$2;

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
            "Lcom/parse/ParseFile$State;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/parse/ParseFile$2$1;->this$1:Lcom/parse/ParseFile$2;

    iget-object v1, v0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFile$State;

    # setter for: Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;
    invoke-static {v1, v0}, Lcom/parse/ParseFile;->access$402(Lcom/parse/ParseFile;Lcom/parse/ParseFile$State;)Lcom/parse/ParseFile$State;

    iget-object v0, p0, Lcom/parse/ParseFile$2$1;->this$1:Lcom/parse/ParseFile$2;

    iget-object v0, v0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iput-object v2, v0, Lcom/parse/ParseFile;->data:[B

    iget-object v0, p0, Lcom/parse/ParseFile$2$1;->this$1:Lcom/parse/ParseFile$2;

    iget-object v0, v0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iput-object v2, v0, Lcom/parse/ParseFile;->file:Ljava/io/File;

    invoke-virtual {p1}, La/j;->k()La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$2$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
