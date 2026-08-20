.class public Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints$GCM;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation


# static fields
.field public static final ALIAS:Ljava/lang/String; = "synthetic_password_knox.analytics.service.cryptokey"

.field public static final BLOCK_MODE:Ljava/lang/String; = "GCM"

.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final ENCRYPTION_PADDING:Ljava/lang/String; = "NoPadding"

.field public static final IV_SIZE:I = 0xc

.field public static final LEGACY_ALIAS:Ljava/lang/String; = "com.samsung.android.knox.analytics.service.cryptokey"

.field public static final TLEN_SIZE:I = 0x80


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
