.class public abstract Lcom/samsung/android/gesture/PocketDumpData;
.super Ljava/lang/Object;
.source "PocketDumpData.java"


# instance fields
.field protected dateFormat:Ljava/text/SimpleDateFormat;

.field protected mCurrentTime:Ljava/lang/String;

.field protected mLux:I

.field protected mProx:I

.field protected mScreenOnTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketDumpData;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public abstract toString()Ljava/lang/String;
.end method
