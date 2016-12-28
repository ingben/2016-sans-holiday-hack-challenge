.class Lcom/parse/ParseUser$8$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$8$1;->then(La/j;)La/j;
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
.field final synthetic this$2:Lcom/parse/ParseUser$8$1;

.field final synthetic val$signUpTask:La/j;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$8$1;La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$8$1$1;->this$2:Lcom/parse/ParseUser$8$1;

    iput-object p2, p0, Lcom/parse/ParseUser$8$1$1;->val$signUpTask:La/j;

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
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseUser$8$1$1;->val$signUpTask:La/j;

    invoke-virtual {v0}, La/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser$8$1$1;->val$signUpTask:La/j;

    invoke-virtual {v0}, La/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser$8$1$1;->this$2:Lcom/parse/ParseUser$8$1;

    iget-object v0, v0, Lcom/parse/ParseUser$8$1;->this$1:Lcom/parse/ParseUser$8;

    iget-object v0, v0, Lcom/parse/ParseUser$8;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)La/j;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$200(Lcom/parse/ParseUser;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$8$1$1;->val$signUpTask:La/j;

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$8$1$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
