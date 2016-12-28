.class Lcom/parse/ParseOkHttpClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseOkHttpClient;->addExternalInterceptor(Lcom/parse/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseOkHttpClient;

.field final synthetic val$parseNetworkInterceptor:Lcom/parse/a/d;


# direct methods
.method constructor <init>(Lcom/parse/ParseOkHttpClient;Lcom/parse/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseOkHttpClient$1;->this$0:Lcom/parse/ParseOkHttpClient;

    iput-object p2, p0, Lcom/parse/ParseOkHttpClient$1;->val$parseNetworkInterceptor:Lcom/parse/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseOkHttpClient$1;->this$0:Lcom/parse/ParseOkHttpClient;

    # invokes: Lcom/parse/ParseOkHttpClient;->getParseHttpRequest(Lokhttp3/Request;)Lcom/parse/a/b;
    invoke-static {v1, v0}, Lcom/parse/ParseOkHttpClient;->access$000(Lcom/parse/ParseOkHttpClient;Lokhttp3/Request;)Lcom/parse/a/b;

    move-result-object v0

    new-instance v1, La/g;

    invoke-direct {v1}, La/g;-><init>()V

    iget-object v2, p0, Lcom/parse/ParseOkHttpClient$1;->val$parseNetworkInterceptor:Lcom/parse/a/d;

    new-instance v3, Lcom/parse/ParseOkHttpClient$1$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/parse/ParseOkHttpClient$1$1;-><init>(Lcom/parse/ParseOkHttpClient$1;Lcom/parse/a/b;Lokhttp3/Interceptor$Chain;La/g;)V

    invoke-interface {v2, v3}, Lcom/parse/a/d;->intercept(Lcom/parse/a/d$a;)Lcom/parse/a/c;

    move-result-object v2

    invoke-virtual {v1}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/parse/a/c;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/parse/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    invoke-virtual {v2}, Lcom/parse/a/c;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/parse/a/c;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/parse/ParseOkHttpClient$1$2;

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseOkHttpClient$1$2;-><init>(Lcom/parse/ParseOkHttpClient$1;Lcom/parse/a/c;)V

    invoke-virtual {v3, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
