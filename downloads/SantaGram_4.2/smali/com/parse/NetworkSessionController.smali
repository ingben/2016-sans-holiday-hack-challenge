.class Lcom/parse/NetworkSessionController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ParseSessionController;


# instance fields
.field private final client:Lcom/parse/ParseHttpClient;

.field private final coder:Lcom/parse/ParseObjectCoder;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/NetworkSessionController;->client:Lcom/parse/ParseHttpClient;

    invoke-static {}, Lcom/parse/ParseObjectCoder;->get()Lcom/parse/ParseObjectCoder;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/NetworkSessionController;->coder:Lcom/parse/ParseObjectCoder;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/NetworkSessionController;)Lcom/parse/ParseObjectCoder;
    .locals 1

    iget-object v0, p0, Lcom/parse/NetworkSessionController;->coder:Lcom/parse/ParseObjectCoder;

    return-object v0
.end method


# virtual methods
.method public getSessionAsync(Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/parse/ParseRESTSessionCommand;->getCurrentSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/NetworkSessionController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTSessionCommand;->executeAsync(Lcom/parse/ParseHttpClient;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/NetworkSessionController$1;

    invoke-direct {v1, p0}, Lcom/parse/NetworkSessionController$1;-><init>(Lcom/parse/NetworkSessionController;)V

    invoke-virtual {v0, v1}, La/j;->c(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public revokeAsync(Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/parse/ParseRESTSessionCommand;->revoke(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/NetworkSessionController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTSessionCommand;->executeAsync(Lcom/parse/ParseHttpClient;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    return-object v0
.end method

.method public upgradeToRevocable(Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/parse/ParseRESTSessionCommand;->upgradeToRevocableSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/NetworkSessionController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTSessionCommand;->executeAsync(Lcom/parse/ParseHttpClient;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/NetworkSessionController$2;

    invoke-direct {v1, p0}, Lcom/parse/NetworkSessionController$2;-><init>(Lcom/parse/NetworkSessionController;)V

    invoke-virtual {v0, v1}, La/j;->c(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method
