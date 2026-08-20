.class Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;
.super Ljava/lang/Object;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseData"
.end annotation


# instance fields
.field public blacklist mKey:Ljava/lang/String;

.field public blacklist mSlot:I

.field public blacklist mValue:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mSlot:I

    .line 122
    iput-object p2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mKey:Ljava/lang/String;

    if-nez p3, :cond_a

    return-void

    .line 128
    :cond_a
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mValue:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 129
    :goto_10
    array-length p2, p3

    if-ge p1, p2, :cond_1c

    .line 130
    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mValue:[Ljava/lang/String;

    aget-object v0, p3, p1

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_1c
    return-void
.end method
