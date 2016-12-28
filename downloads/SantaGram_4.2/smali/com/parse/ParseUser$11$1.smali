.class Lcom/parse/ParseUser$11$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$11;->then(La/j;)La/j;
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
        "Lcom/parse/ParseUser$State;",
        "La/j",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$11;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$11;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$11$1;->this$0:Lcom/parse/ParseUser$11;

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
            "Lcom/parse/ParseUser$State;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State;

    invoke-static {v0}, Lcom/parse/ParseObject;->from(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)La/j;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$200(Lcom/parse/ParseUser;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$11$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseUser$11$1$1;-><init>(Lcom/parse/ParseUser$11$1;Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v2}, La/j;->c(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$11$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
