.class Lcom/parse/ParseFile$State$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseFile$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseFile$State;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile$State$Builder;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->mimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile$State$Builder;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile$State$Builder;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParseFile$State$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile$State$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseFile$State$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile$State$Builder;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseFile$State$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile$State$Builder;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/parse/ParseFile$State;
    .locals 2

    new-instance v0, Lcom/parse/ParseFile$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseFile$State;-><init>(Lcom/parse/ParseFile$State$Builder;Lcom/parse/ParseFile$1;)V

    return-object v0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$State$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$State$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$State$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
