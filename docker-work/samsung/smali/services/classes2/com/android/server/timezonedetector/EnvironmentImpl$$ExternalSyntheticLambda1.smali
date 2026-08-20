.class public final synthetic Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/timezonedetector/ConfigurationChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/EnvironmentImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/ConfigurationChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/EnvironmentImpl;Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/EnvironmentImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/EnvironmentImpl;

    iget-object p0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-static {v0, p0}, Lcom/android/server/timezonedetector/EnvironmentImpl;->$r8$lambda$nGWWD_UkuHE7JO-X_XfuMgJ7CXE(Lcom/android/server/timezonedetector/EnvironmentImpl;Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method
