.class public final synthetic Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;

.field public final synthetic f$1:Lcom/android/server/am/KillPolicyManager$PsiDataType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/KillPolicyManager$PsiFile;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/KillPolicyManager$PsiFile;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->$r8$lambda$Ro3Ye6YlJJ25IJhXMTwqtX4mZB8(Lcom/android/server/am/KillPolicyManager$PsiFile;Lcom/android/server/am/KillPolicyManager$PsiDataType;Ljava/lang/String;)V

    return-void
.end method
