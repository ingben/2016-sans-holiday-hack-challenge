.class Lcom/parse/ParseConfigController;
.super Ljava/lang/Object;


# instance fields
.field private currentConfigController:Lcom/parse/ParseCurrentConfigController;

.field private final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;Lcom/parse/ParseCurrentConfigController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/ParseConfigController;->restClient:Lcom/parse/ParseHttpClient;

    iput-object p2, p0, Lcom/parse/ParseConfigController;->currentConfigController:Lcom/parse/ParseCurrentConfigController;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseConfigController;)Lcom/parse/ParseCurrentConfigController;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseConfigController;->currentConfigController:Lcom/parse/ParseCurrentConfigController;

    return-object v0
.end method


# virtual methods
.method public getAsync(Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/parse/ParseRESTConfigCommand;->fetchConfigCommand(Ljava/lang/String;)Lcom/parse/ParseRESTConfigCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    iget-object v1, p0, Lcom/parse/ParseConfigController;->restClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseConfigController$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseConfigController$1;-><init>(Lcom/parse/ParseConfigController;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method getCurrentConfigController()Lcom/parse/ParseCurrentConfigController;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseConfigController;->currentConfigController:Lcom/parse/ParseCurrentConfigController;

    return-object v0
.end method
