.class final Lcom/umeng/message/protobuffer/PushRequest$ProtoAdapter_PushRequest;
.super Lcom/squareup/wire/ProtoAdapter;
.source "PushRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/PushRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_PushRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter",
        "<",
        "Lcom/umeng/message/protobuffer/PushRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/umeng/message/protobuffer/PushRequest;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    .line 271
    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/umeng/message/protobuffer/PushRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Lcom/umeng/message/protobuffer/PushRequest$Builder;

    invoke-direct {v1}, Lcom/umeng/message/protobuffer/PushRequest$Builder;-><init>()V

    .line 302
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    .line 303
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    .line 304
    packed-switch v4, :pswitch_data_0

    .line 321
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 323
    invoke-virtual {v1, v4, v0, v5}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 305
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->version(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushRequest$Builder;

    goto :goto_0

    .line 306
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->signature(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushRequest$Builder;

    goto :goto_0

    .line 307
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->serialNo(Ljava/lang/Integer;)Lcom/umeng/message/protobuffer/PushRequest$Builder;

    goto :goto_0

    .line 308
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->timestamp(Ljava/lang/Integer;)Lcom/umeng/message/protobuffer/PushRequest$Builder;

    goto :goto_0

    .line 309
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->checksum(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushRequest$Builder;

    goto :goto_0

    .line 310
    :pswitch_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->salt(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushRequest$Builder;

    goto :goto_0

    .line 313
    :pswitch_6
    :try_start_0
    sget-object v0, Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;

    invoke-virtual {v1, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->encryption(Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;)Lcom/umeng/message/protobuffer/PushRequest$Builder;
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 319
    :pswitch_7
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/okio/ByteString;

    invoke-virtual {v1, v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->entity(Lcom/ss/okio/ByteString;)Lcom/umeng/message/protobuffer/PushRequest$Builder;

    goto/16 :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 328
    invoke-virtual {v1}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->build()Lcom/umeng/message/protobuffer/PushRequest;

    move-result-object v0

    return-object v0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/PushRequest$ProtoAdapter_PushRequest;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/umeng/message/protobuffer/PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/umeng/message/protobuffer/PushRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p2, Lcom/umeng/message/protobuffer/PushRequest;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/umeng/message/protobuffer/PushRequest;->version:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 289
    :cond_0
    iget-object v0, p2, Lcom/umeng/message/protobuffer/PushRequest;->signature:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/umeng/message/protobuffer/PushRequest;->signature:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 290
    :cond_1
    iget-object v0, p2, Lcom/umeng/message/protobuffer/PushRequest;->serialNo:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/umeng/message/protobuffer/PushRequest;->serialNo:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 291
    :cond_2
    iget-object v0, p2, Lcom/umeng/message/protobuffer/PushRequest;->timestamp:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/umeng/message/protobuffer/PushRequest;->timestamp:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 292
    :cond_3
    iget-object v0, p2, Lcom/umeng/message/protobuffer/PushRequest;->checksum:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/umeng/message/protobuffer/PushRequest;->checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 293
    :cond_4
    iget-object v0, p2, Lcom/umeng/message/protobuffer/PushRequest;->salt:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/umeng/message/protobuffer/PushRequest;->salt:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 294
    :cond_5
    iget-object v0, p2, Lcom/umeng/message/protobuffer/PushRequest;->encryption:Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/umeng/message/protobuffer/PushRequest;->encryption:Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 295
    :cond_6
    iget-object v0, p2, Lcom/umeng/message/protobuffer/PushRequest;->entity:Lcom/ss/okio/ByteString;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/umeng/message/protobuffer/PushRequest;->entity:Lcom/ss/okio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 296
    :cond_7
    invoke-virtual {p2}, Lcom/umeng/message/protobuffer/PushRequest;->unknownFields()Lcom/ss/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lcom/ss/okio/ByteString;)V

    .line 297
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    check-cast p2, Lcom/umeng/message/protobuffer/PushRequest;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/protobuffer/PushRequest$ProtoAdapter_PushRequest;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/umeng/message/protobuffer/PushRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/umeng/message/protobuffer/PushRequest;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p1, Lcom/umeng/message/protobuffer/PushRequest;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/umeng/message/protobuffer/PushRequest;->version:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :goto_0
    iget-object v2, p1, Lcom/umeng/message/protobuffer/PushRequest;->signature:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/umeng/message/protobuffer/PushRequest;->signature:Ljava/lang/String;

    .line 276
    invoke-virtual {v2, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/umeng/message/protobuffer/PushRequest;->serialNo:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/umeng/message/protobuffer/PushRequest;->serialNo:Ljava/lang/Integer;

    .line 277
    invoke-virtual {v0, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/umeng/message/protobuffer/PushRequest;->timestamp:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/umeng/message/protobuffer/PushRequest;->timestamp:Ljava/lang/Integer;

    .line 278
    invoke-virtual {v0, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/umeng/message/protobuffer/PushRequest;->checksum:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/umeng/message/protobuffer/PushRequest;->checksum:Ljava/lang/String;

    .line 279
    invoke-virtual {v0, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/umeng/message/protobuffer/PushRequest;->salt:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/umeng/message/protobuffer/PushRequest;->salt:Ljava/lang/String;

    .line 280
    invoke-virtual {v0, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    iget-object v0, p1, Lcom/umeng/message/protobuffer/PushRequest;->encryption:Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/umeng/message/protobuffer/PushRequest;->encryption:Lcom/umeng/message/protobuffer/PushRequest$entityEncodingFormat;

    .line 281
    invoke-virtual {v0, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/umeng/message/protobuffer/PushRequest;->entity:Lcom/ss/okio/ByteString;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/umeng/message/protobuffer/PushRequest;->entity:Lcom/ss/okio/ByteString;

    .line 282
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 283
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushRequest;->unknownFields()Lcom/ss/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 275
    goto :goto_0

    :cond_2
    move v2, v1

    .line 276
    goto :goto_1

    :cond_3
    move v0, v1

    .line 277
    goto :goto_2

    :cond_4
    move v0, v1

    .line 278
    goto :goto_3

    :cond_5
    move v0, v1

    .line 279
    goto :goto_4

    :cond_6
    move v0, v1

    .line 280
    goto :goto_5

    :cond_7
    move v0, v1

    .line 281
    goto :goto_6
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 268
    check-cast p1, Lcom/umeng/message/protobuffer/PushRequest;

    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/PushRequest$ProtoAdapter_PushRequest;->encodedSize(Lcom/umeng/message/protobuffer/PushRequest;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/umeng/message/protobuffer/PushRequest;)Lcom/umeng/message/protobuffer/PushRequest;
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/umeng/message/protobuffer/PushRequest;->newBuilder()Lcom/umeng/message/protobuffer/PushRequest$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 335
    invoke-virtual {v0}, Lcom/umeng/message/protobuffer/PushRequest$Builder;->build()Lcom/umeng/message/protobuffer/PushRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    check-cast p1, Lcom/umeng/message/protobuffer/PushRequest;

    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/PushRequest$ProtoAdapter_PushRequest;->redact(Lcom/umeng/message/protobuffer/PushRequest;)Lcom/umeng/message/protobuffer/PushRequest;

    move-result-object v0

    return-object v0
.end method
