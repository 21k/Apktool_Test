.class final Lcom/ss/android/article/common/model/p;
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
        "Lcom/ss/android/article/common/model/MovieReviewBasicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ss/android/article/common/model/MovieReviewBasicInfo;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/ss/android/article/common/model/MovieReviewBasicInfo;

    invoke-direct {v0, p1}, Lcom/ss/android/article/common/model/MovieReviewBasicInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ss/android/article/common/model/MovieReviewBasicInfo;
    .locals 1

    .prologue
    .line 40
    new-array v0, p1, [Lcom/ss/android/article/common/model/MovieReviewBasicInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/ss/android/article/common/model/p;->a(Landroid/os/Parcel;)Lcom/ss/android/article/common/model/MovieReviewBasicInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/ss/android/article/common/model/p;->a(I)[Lcom/ss/android/article/common/model/MovieReviewBasicInfo;

    move-result-object v0

    return-object v0
.end method
