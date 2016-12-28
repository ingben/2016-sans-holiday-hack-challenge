.class final Lcom/parse/ParseSession$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSession;->getCurrentSessionInBackground()La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/String;",
        "La/j",
        "<",
        "Lcom/parse/ParseSession;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

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
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseSession;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    # invokes: Lcom/parse/ParseSession;->getSessionController()Lcom/parse/ParseSessionController;
    invoke-static {}, Lcom/parse/ParseSession;->access$000()Lcom/parse/ParseSessionController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/parse/ParseSessionController;->getSessionAsync(Ljava/lang/String;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseSession$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseSession$1$1;-><init>(Lcom/parse/ParseSession$1;)V

    invoke-virtual {v0, v1}, La/j;->c(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseSession$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
