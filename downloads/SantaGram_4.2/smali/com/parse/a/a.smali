.class public abstract Lcom/parse/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final contentLength:J

.field private final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/a/a;->contentType:Ljava/lang/String;

    iput-wide p2, p0, Lcom/parse/a/a;->contentLength:J

    return-void
.end method


# virtual methods
.method public abstract getContent()Ljava/io/InputStream;
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/parse/a/a;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/a;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
