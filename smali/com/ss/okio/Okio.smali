.class public final Lcom/ss/okio/Okio;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/ss/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ss/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ss/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static appendingSink(Ljava/io/File;)Lcom/ss/okio/Sink;
    .locals 2

    .prologue
    .line 181
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/ss/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/ss/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(Lcom/ss/okio/Sink;)Lcom/ss/okio/BufferedSink;
    .locals 2

    .prologue
    .line 60
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Lcom/ss/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/ss/okio/RealBufferedSink;-><init>(Lcom/ss/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lcom/ss/okio/Source;)Lcom/ss/okio/BufferedSource;
    .locals 2

    .prologue
    .line 50
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Lcom/ss/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/ss/okio/RealBufferedSource;-><init>(Lcom/ss/okio/Source;)V

    return-object v0
.end method

.method public static sink(Ljava/io/File;)Lcom/ss/okio/Sink;
    .locals 2

    .prologue
    .line 175
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/ss/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/ss/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/ss/okio/Sink;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/ss/okio/Timeout;

    invoke-direct {v0}, Lcom/ss/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/ss/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/ss/okio/Timeout;)Lcom/ss/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method private static sink(Ljava/io/OutputStream;Lcom/ss/okio/Timeout;)Lcom/ss/okio/Sink;
    .locals 2

    .prologue
    .line 70
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Lcom/ss/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/ss/okio/Okio$1;-><init>(Lcom/ss/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static sink(Ljava/net/Socket;)Lcom/ss/okio/Sink;
    .locals 2

    .prologue
    .line 117
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/ss/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/ss/okio/AsyncTimeout;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/ss/okio/Timeout;)Lcom/ss/okio/Sink;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/ss/okio/AsyncTimeout;->sink(Lcom/ss/okio/Sink;)Lcom/ss/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/ss/okio/Sink;
    .locals 2
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 188
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/ss/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/File;)Lcom/ss/okio/Source;
    .locals 2

    .prologue
    .line 162
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/ss/okio/Okio;->source(Ljava/io/InputStream;)Lcom/ss/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/ss/okio/Source;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/ss/okio/Timeout;

    invoke-direct {v0}, Lcom/ss/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/ss/okio/Okio;->source(Ljava/io/InputStream;Lcom/ss/okio/Timeout;)Lcom/ss/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static source(Ljava/io/InputStream;Lcom/ss/okio/Timeout;)Lcom/ss/okio/Source;
    .locals 2

    .prologue
    .line 129
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    new-instance v0, Lcom/ss/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/ss/okio/Okio$2;-><init>(Lcom/ss/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static source(Ljava/net/Socket;)Lcom/ss/okio/Source;
    .locals 2

    .prologue
    .line 198
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    invoke-static {p0}, Lcom/ss/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/ss/okio/AsyncTimeout;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/okio/Okio;->source(Ljava/io/InputStream;Lcom/ss/okio/Timeout;)Lcom/ss/okio/Source;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Lcom/ss/okio/AsyncTimeout;->source(Lcom/ss/okio/Source;)Lcom/ss/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/ss/okio/Source;
    .locals 2
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 169
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/okio/Okio;->source(Ljava/io/InputStream;)Lcom/ss/okio/Source;

    move-result-object v0

    return-object v0
.end method

.method private static timeout(Ljava/net/Socket;)Lcom/ss/okio/AsyncTimeout;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/ss/okio/Okio$3;

    invoke-direct {v0, p0}, Lcom/ss/okio/Okio$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
