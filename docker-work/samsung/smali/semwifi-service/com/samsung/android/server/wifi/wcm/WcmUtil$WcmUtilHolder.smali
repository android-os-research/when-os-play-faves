.class Lcom/samsung/android/server/wifi/wcm/WcmUtil$WcmUtilHolder;
.super Ljava/lang/Object;
.source "WcmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/WcmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WcmUtilHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/server/wifi/wcm/WcmUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;-><init>(Lcom/samsung/android/server/wifi/wcm/WcmUtil-IA;)V

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil$WcmUtilHolder;->INSTANCE:Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
