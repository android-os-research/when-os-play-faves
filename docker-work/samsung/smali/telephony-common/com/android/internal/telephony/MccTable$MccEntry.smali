.class public Lcom/android/internal/telephony/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/MccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final greylist-max-q mIso:Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1d
        publicAlternatives = "There is no alternative for {@code MccTable.MccEntry.mIso}, but it was included in hidden APIs due to a static analysis false positive and has been made max Q. Please file a bug if you still require this API."
    .end annotation
.end field

.field final blacklist mMcc:I

.field final blacklist mSmallestDigitsMnc:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;I)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    iput p1, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    .line 85
    iput-object p2, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mSmallestDigitsMnc:I

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/telephony/MccTable$MccEntry;)I
    .registers 2

    .line 91
    iget p0, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    iget p1, p1, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 70
    check-cast p1, Lcom/android/internal/telephony/MccTable$MccEntry;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MccTable$MccEntry;->compareTo(Lcom/android/internal/telephony/MccTable$MccEntry;)I

    move-result p0

    return p0
.end method
