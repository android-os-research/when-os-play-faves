.class public final synthetic Lcom/att/iqi/libs/IQIConcierge$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/libs/IQIConcierge;


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/libs/IQIConcierge;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/libs/IQIConcierge$$ExternalSyntheticLambda0;->f$0:Lcom/att/iqi/libs/IQIConcierge;

    return-void
.end method


# virtual methods
.method public final onPreferenceChanged(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/att/iqi/libs/IQIConcierge$$ExternalSyntheticLambda0;->f$0:Lcom/att/iqi/libs/IQIConcierge;

    invoke-static {p0, p1}, Lcom/att/iqi/libs/IQIConcierge;->$r8$lambda$aiVd-Ktw6YtfNaQsMB9ePDua9Xc(Lcom/att/iqi/libs/IQIConcierge;Ljava/lang/String;)V

    return-void
.end method
