.class Lcom/parse/ParsePlugins$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePlugins;


# direct methods
.method constructor <init>(Lcom/parse/ParsePlugins;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/parse/a/d$a;)Lcom/parse/a/c;
    .locals 4

    invoke-interface {p1}, Lcom/parse/a/d$a;->getRequest()Lcom/parse/a/b;

    move-result-object v0

    new-instance v1, Lcom/parse/a/b$a;

    invoke-direct {v1, v0}, Lcom/parse/a/b$a;-><init>(Lcom/parse/a/b;)V

    const-string v2, "X-Parse-Application-Id"

    iget-object v3, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    # getter for: Lcom/parse/ParsePlugins;->applicationId:Ljava/lang/String;
    invoke-static {v3}, Lcom/parse/ParsePlugins;->access$100(Lcom/parse/ParsePlugins;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    move-result-object v1

    const-string v2, "X-Parse-Client-Key"

    iget-object v3, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    # getter for: Lcom/parse/ParsePlugins;->clientKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/parse/ParsePlugins;->access$000(Lcom/parse/ParsePlugins;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    move-result-object v1

    const-string v2, "X-Parse-Client-Version"

    invoke-static {}, Lcom/parse/Parse;->externalVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    move-result-object v1

    const-string v2, "X-Parse-App-Build-Version"

    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    move-result-object v1

    const-string v2, "X-Parse-App-Display-Version"

    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    move-result-object v1

    const-string v2, "X-Parse-OS-Version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    move-result-object v1

    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    move-result-object v1

    const-string v2, "X-Parse-Installation-Id"

    invoke-virtual {v0, v2}, Lcom/parse/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "X-Parse-Installation-Id"

    iget-object v2, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/InstallationId;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    :cond_0
    invoke-virtual {v1}, Lcom/parse/a/b$a;->a()Lcom/parse/a/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/parse/a/d$a;->proceed(Lcom/parse/a/b;)Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method
