.class Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader$1;
.super Lcom/ss/squareup/okhttp/internal/NamedRunnable;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic val$newStream:Lcom/ss/squareup/okhttp/internal/framed/FramedStream;


# direct methods
.method varargs constructor <init>(Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/ss/squareup/okhttp/internal/framed/FramedStream;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/ss/squareup/okhttp/internal/framed/FramedStream;

    invoke-direct {p0, p2, p3}, Lcom/ss/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/ss/squareup/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/ss/squareup/okhttp/internal/framed/FramedConnection;->handler:Lcom/ss/squareup/okhttp/internal/framed/IncomingStreamHandler;
    invoke-static {v0}, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection;->access$1800(Lcom/ss/squareup/okhttp/internal/framed/FramedConnection;)Lcom/ss/squareup/okhttp/internal/framed/IncomingStreamHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/ss/squareup/okhttp/internal/framed/FramedStream;

    invoke-interface {v0, v1}, Lcom/ss/squareup/okhttp/internal/framed/IncomingStreamHandler;->receive(Lcom/ss/squareup/okhttp/internal/framed/FramedStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    sget-object v1, Lcom/ss/squareup/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StreamHandler failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v4, v4, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/ss/squareup/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/ss/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v4}, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection;->access$900(Lcom/ss/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    :try_start_1
    iget-object v0, p0, Lcom/ss/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/ss/squareup/okhttp/internal/framed/FramedStream;

    sget-object v1, Lcom/ss/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/ss/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/ss/squareup/okhttp/internal/framed/FramedStream;->close(Lcom/ss/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 653
    :catch_1
    move-exception v0

    goto :goto_0
.end method
