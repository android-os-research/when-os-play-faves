.class public Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$KeyMax;
.super Ljava/lang/Object;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMax"
.end annotation


# static fields
.field public static final blacklist AIRPLANE_MODE_STATUS:I = 0x32

.field public static final blacklist DEFAULT:I = 0xa

.field public static final blacklist NITZ_STATUS:I = 0x32

.field public static final blacklist SHUTDOWN:I = 0x4

.field public static final blacklist TMO_DEVICE_CONFIG:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
