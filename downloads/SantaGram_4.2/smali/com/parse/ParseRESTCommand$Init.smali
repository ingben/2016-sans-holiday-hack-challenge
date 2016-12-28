.class abstract Lcom/parse/ParseRESTCommand$Init;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseRESTCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Init"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseRESTCommand$Init",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private httpPath:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field private jsonParameters:Lorg/json/JSONObject;

.field private localId:Ljava/lang/String;

.field public masterKey:Ljava/lang/String;

.field private method:Lcom/parse/a/b$b;

.field private operationSetUUID:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    iput-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->method:Lcom/parse/a/b$b;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseRESTCommand$Init;)Lcom/parse/a/b$b;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->method:Lcom/parse/a/b$b;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->httpPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseRESTCommand$Init;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->jsonParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->operationSetUUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->localId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public httpPath(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->httpPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public installationId(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->installationId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public jsonParameters(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->jsonParameters:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public localId(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->localId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public masterKey(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->masterKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public method(Lcom/parse/a/b$b;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/a/b$b;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->method:Lcom/parse/a/b$b;

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public operationSetUUID(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->operationSetUUID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/parse/ParseRESTCommand$Init;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public sessionToken(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->sessionToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method
