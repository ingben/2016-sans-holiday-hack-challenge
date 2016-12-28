.class Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseNetworkInterceptorChain"
.end annotation


# instance fields
.field private final externalIndex:I

.field private final internalIndex:I

.field private final request:Lcom/parse/a/b;

.field final synthetic this$0:Lcom/parse/ParseHttpClient;


# direct methods
.method constructor <init>(Lcom/parse/ParseHttpClient;IILcom/parse/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    iput p3, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    iput-object p4, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->request:Lcom/parse/a/b;

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/parse/a/b;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->request:Lcom/parse/a/b;

    return-object v0
.end method

.method public proceed(Lcom/parse/a/b;)Lcom/parse/a/c;
    .locals 4

    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;
    invoke-static {v0}, Lcom/parse/ParseHttpClient;->access$000(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseHttpClient;->access$000(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;

    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    iget v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;-><init>(Lcom/parse/ParseHttpClient;IILcom/parse/a/b;)V

    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->internalInterceptors:Ljava/util/List;
    invoke-static {v0}, Lcom/parse/ParseHttpClient;->access$000(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/a/d;

    invoke-interface {v0, v1}, Lcom/parse/a/d;->intercept(Lcom/parse/a/d$a;)Lcom/parse/a/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;
    invoke-static {v0}, Lcom/parse/ParseHttpClient;->access$100(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;
    invoke-static {v1}, Lcom/parse/ParseHttpClient;->access$100(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;

    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    iget v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->internalIndex:I

    iget v3, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;-><init>(Lcom/parse/ParseHttpClient;IILcom/parse/a/b;)V

    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    # getter for: Lcom/parse/ParseHttpClient;->externalInterceptors:Ljava/util/List;
    invoke-static {v0}, Lcom/parse/ParseHttpClient;->access$100(Lcom/parse/ParseHttpClient;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->externalIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/a/d;

    invoke-interface {v0, v1}, Lcom/parse/a/d;->intercept(Lcom/parse/a/d$a;)Lcom/parse/a/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseNetworkInterceptorChain;->this$0:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, p1}, Lcom/parse/ParseHttpClient;->executeInternal(Lcom/parse/a/b;)Lcom/parse/a/c;

    move-result-object v0

    goto :goto_0
.end method
