.class Lcom/parse/ParseAWSRequest;
.super Lcom/parse/ParseRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/parse/a/b$b;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/a/b$b;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/parse/ParseAWSRequest;->tempFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseAWSRequest;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseAWSRequest;->tempFile:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected onResponseAsync(Lcom/parse/a/c;Lcom/parse/ProgressCallback;)La/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/a/c;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/parse/a/c;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseAWSRequest;->method:Lcom/parse/a/b$b;

    sget-object v1, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/parse/ParseAWSRequest;->method:Lcom/parse/a/b$b;

    sget-object v1, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    if-ne v0, v1, :cond_3

    const-string v0, "Download from"

    :goto_1
    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x64

    const-string v3, "%s S3 failed. %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/parse/a/c;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "Upload to"

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/parse/ParseAWSRequest$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseAWSRequest$1;-><init>(Lcom/parse/ParseAWSRequest;Lcom/parse/a/c;Lcom/parse/ProgressCallback;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    goto :goto_0
.end method
