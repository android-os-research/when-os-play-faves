.class public Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;
.super Ljava/lang/Object;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonaPolicyData"
.end annotation


# instance fields
.field public mCustomPersonaName:Ljava/lang/String;

.field public mPersonalModeLabel:Ljava/lang/String;

.field public mRCPDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRCPNotifSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSecureFolderPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    .line 70
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    .line 71
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    .line 72
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mPersonalModeLabel:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mCustomPersonaName:Ljava/lang/String;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    return-void
.end method
