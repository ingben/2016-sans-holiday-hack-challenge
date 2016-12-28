.class Lcom/parse/TaskQueue$2$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/TaskQueue$2;->then(La/j;)La/j;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/TaskQueue$2;

.field final synthetic val$task:La/j;


# direct methods
.method constructor <init>(Lcom/parse/TaskQueue$2;La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/TaskQueue$2$1;->this$0:Lcom/parse/TaskQueue$2;

    iput-object p2, p0, Lcom/parse/TaskQueue$2$1;->val$task:La/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/TaskQueue$2$1;->val$task:La/j;

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/TaskQueue$2$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
