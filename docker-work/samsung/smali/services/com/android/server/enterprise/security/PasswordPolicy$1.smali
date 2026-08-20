.class Lcom/android/server/enterprise/security/PasswordPolicy$1;
.super Ljava/util/ArrayList;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "com.samsung.android.knox.containeragent"

    .line 176
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.samsung.android.knox.containercore"

    .line 177
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
