.class public Lcom/parse/ParseRESTFileCommand$Builder;
.super Lcom/parse/ParseRESTCommand$Init;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseRESTFileCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRESTCommand$Init",
        "<",
        "Lcom/parse/ParseRESTFileCommand$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/parse/ParseRESTCommand$Init;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->data:[B

    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->contentType:Ljava/lang/String;

    sget-object v0, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    invoke-virtual {p0, v0}, Lcom/parse/ParseRESTFileCommand$Builder;->method(Lcom/parse/a/b$b;)Lcom/parse/ParseRESTCommand$Init;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseRESTFileCommand$Builder;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseRESTFileCommand$Builder;)[B
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->data:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseRESTFileCommand$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->contentType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/parse/ParseRESTFileCommand;
    .locals 1

    new-instance v0, Lcom/parse/ParseRESTFileCommand;

    invoke-direct {v0, p0}, Lcom/parse/ParseRESTFileCommand;-><init>(Lcom/parse/ParseRESTFileCommand$Builder;)V

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRESTFileCommand$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public data([B)Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRESTFileCommand$Builder;->data:[B

    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRESTFileCommand$Builder;->file:Ljava/io/File;

    return-object p0
.end method

.method public fileName(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 3

    const-string v0, "files/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseRESTFileCommand$Builder;->httpPath(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseRESTFileCommand$Builder;

    return-object v0
.end method

.method bridge synthetic self()Lcom/parse/ParseRESTCommand$Init;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseRESTFileCommand$Builder;->self()Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 0

    return-object p0
.end method
