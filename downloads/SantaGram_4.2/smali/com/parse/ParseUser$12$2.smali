.class Lcom/parse/ParseUser$12$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$12;->then(La/j;)La/j;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$12;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$12;Lcom/parse/ParseUser;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$12$2;->this$0:Lcom/parse/ParseUser$12;

    iput-object p2, p0, Lcom/parse/ParseUser$12$2;->val$user:Lcom/parse/ParseUser;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    instance-of v1, v0, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$12$2;->this$0:Lcom/parse/ParseUser$12;

    iget-object v1, v1, Lcom/parse/ParseUser$12;->val$logInWithTask:La/h;

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$12$2;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$12$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
