.class public Lcom/android/server/power/PowerManagerUtil$Country;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Country"
.end annotation


# static fields
.field public static final CHINA:Z

.field public static final COUNTRY_CODE:Ljava/lang/String;

.field public static final US:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.csc.countryiso_code"

    const-string v1, "NONE"

    .line 505
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$Country;->COUNTRY_CODE:Ljava/lang/String;

    const-string v1, "CN"

    .line 506
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil$Country;->CHINA:Z

    const-string v1, "US"

    .line 507
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$Country;->US:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
