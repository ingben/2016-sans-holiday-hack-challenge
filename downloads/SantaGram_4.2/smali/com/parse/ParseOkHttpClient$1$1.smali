.class Lcom/parse/ParseOkHttpClient$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseOkHttpClient$1;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseOkHttpClient$1;

.field final synthetic val$okHttpChain:Lokhttp3/Interceptor$Chain;

.field final synthetic val$okHttpResponseCapture:La/g;

.field final synthetic val$parseRequest:Lcom/parse/a/b;


# direct methods
.method constructor <init>(Lcom/parse/ParseOkHttpClient$1;Lcom/parse/a/b;Lokhttp3/Interceptor$Chain;La/g;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseOkHttpClient$1$1;->this$1:Lcom/parse/ParseOkHttpClient$1;

    iput-object p2, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$parseRequest:Lcom/parse/a/b;

    iput-object p3, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$okHttpChain:Lokhttp3/Interceptor$Chain;

    iput-object p4, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$okHttpResponseCapture:La/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/parse/a/b;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$parseRequest:Lcom/parse/a/b;

    return-object v0
.end method

.method public proceed(Lcom/parse/a/b;)Lcom/parse/a/c;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseOkHttpClient$1$1;->this$1:Lcom/parse/ParseOkHttpClient$1;

    iget-object v0, v0, Lcom/parse/ParseOkHttpClient$1;->this$0:Lcom/parse/ParseOkHttpClient;

    invoke-virtual {v0, p1}, Lcom/parse/ParseOkHttpClient;->getRequest(Lcom/parse/a/b;)Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$okHttpChain:Lokhttp3/Interceptor$Chain;

    invoke-interface {v1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseOkHttpClient$1$1;->val$okHttpResponseCapture:La/g;

    invoke-virtual {v1, v0}, La/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/parse/ParseOkHttpClient$1$1;->this$1:Lcom/parse/ParseOkHttpClient$1;

    iget-object v1, v1, Lcom/parse/ParseOkHttpClient$1;->this$0:Lcom/parse/ParseOkHttpClient;

    invoke-virtual {v1, v0}, Lcom/parse/ParseOkHttpClient;->getResponse(Lokhttp3/Response;)Lcom/parse/a/c;

    move-result-object v0

    return-object v0
.end method
