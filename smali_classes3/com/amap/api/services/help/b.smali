.class final Lcom/amap/api/services/help/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/help/Tip;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/help/Tip;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/amap/api/services/help/Tip;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/help/Tip;-><init>(Landroid/os/Parcel;Lcom/amap/api/services/help/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/help/Tip;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/amap/api/services/help/b;->a(Landroid/os/Parcel;)Lcom/amap/api/services/help/Tip;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/amap/api/services/help/b;->a(I)[Lcom/amap/api/services/help/Tip;

    move-result-object v0

    return-object v0
.end method