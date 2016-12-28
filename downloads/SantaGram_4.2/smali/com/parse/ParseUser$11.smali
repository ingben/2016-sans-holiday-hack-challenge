.class final Lcom/parse/ParseUser$11;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWithInBackground(Ljava/lang/String;Ljava/util/Map;)La/j;
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
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Ljava/util/Map;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$11;->val$authType:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseUser$11;->val$authData:Ljava/util/Map;

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
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$11;->val$authType:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseUser$11;->val$authData:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/parse/ParseUserController;->logInAsync(Ljava/lang/String;Ljava/util/Map;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$11$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$11$1;-><init>(Lcom/parse/ParseUser$11;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$11;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
