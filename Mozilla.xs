#define STRICT

#include <wx/defs.h>
#include <wxmozilla/wxMozilla.h>
#include "cpp/wxapi.h" // AFTER wxheaders

#undef THIS

MODULE=Wx__Mozilla PACKAGE=Wx::Mozilla

BOOT:
  INIT_PLI_HELPERS( wx_pli_helpers );

MODULE = Wx__Mozilla		PACKAGE = Wx::MozillaBrowser



wxMozillaBrowser *
wxMozillaBrowser::new(parent, id, pos = wxDefaultPosition, size = wxDefaultSize, style = 0, name = wxMozillaBrowserNameStr)
  wxWindow* parent
  wxWindowID id
  wxPoint pos
  wxSize size
  long style
  wxString name
  CODE:
    RETVAL = new wxMozillaBrowser( parent, id, pos, size, style, name );
    wxPli_create_evthandler( aTHX_ RETVAL, CLASS );
  OUTPUT: RETVAL


bool
wxMozillaBrowser::Create(parent, id, pos = wxDefaultPosition, size = wxDefaultSize, style = 0, name = wxMozillaBrowserNameStr)
  wxWindow* parent
  wxWindowID id
  wxPoint pos
  wxSize size
  long style
  wxString name

wxString
wxMozillaBrowser::GetURL()

bool
wxMozillaBrowser::SavePage(filename, saveFiles=TRUE)
  wxString filename
  bool saveFiles

bool
wxMozillaBrowser::IsBusy()

bool
wxMozillaBrowser::GoBack()

bool
wxMozillaBrowser::CanGoBack()

bool
wxMozillaBrowser::GoForward()

bool
wxMozillaBrowser::CanGoForward()

bool
wxMozillaBrowser::Stop()

bool
wxMozillaBrowser::Reload()

bool
wxMozillaBrowser::FindNext()

wxString
wxMozillaBrowser::GetStatus()

wxString
wxMozillaBrowser::GetSelection()

void
wxMozillaBrowser::Copy()

void
wxMozillaBrowser::SelectAll()

void
wxMozillaBrowser::SelectNone()

void
wxMozillaBrowser::MakeEditable(enable=TRUE)
  bool enable

bool
wxMozillaBrowser::IsEditable()

void
wxMozillaBrowser::EditCommand(cmdId, value = wxEmptyString)
  wxString cmdId
  wxString value

bool
wxMozillaBrowser::GetCommandState(command, state)
  wxString command
  wxString state

wxString
wxMozillaBrowser::GetStateAttribute(command)
  wxString command

void
wxMozillaBrowser::UpdateBaseURI()

void
wxMozillaBrowser::InsertHTML(html)
  wxString html

#void
#wxMozillaBrowser::GetHTMLEditor(htmlEditor)
#  nsIHTMLEditor **htmlEditor

bool
wxMozillaBrowser::OpenStream(location, type)
  wxString location
  wxString type

bool
wxMozillaBrowser::AppendToStream(data)
  wxString data

bool
wxMozillaBrowser::CloseStream()

#
# These don't compile right, so they're off for now
#
#void
#wxMozillaBrowser::OnSize(event)
#  wxSizeEvent *event
#
#void
#wxMozillaBrowser::OnActivate(event)
#  wxActivateEvent *event
#
#void
#wxMozillaBrowser::OnIdle(event)
#  wxIdleEvent *event

wxString
wxMozillaBrowser::GetLinkMessage()

wxString
wxMozillaBrowser::GetJSStatus()

bool
wxMozillaBrowser::IsElementInSelection(element)
  wxString element

bool
wxMozillaBrowser::SelectElement(element)
  wxString element

wxString
wxMozillaBrowser::GetElementAttribute(tagName, attrName)
  wxString tagName
  wxString attrName

void
wxMozillaBrowser::SetElementAttribute(attrName, attrValue)
  wxString attrName
  wxString attrValue

bool
wxMozillaBrowser::SetPage(data)
  wxString data

wxString
wxMozillaBrowser::GetPage()

void
wxMozillaBrowser::SetTitle(title)
  wxString title

wxString
wxMozillaBrowser::GetTitle()

#
# Link errors, so they're gone for right now
#
#void
#wxMozillaBrowser::StartSpellCheck()
#
#wxString
#wxMozillaBrowser::GetNextMisspelledWord()
#
#void
#wxMozillaBrowser::ReplaceWord(misspelledWord, replacement, allOccurrences)
#  wxString misspelledWord
#  wxString replacement
#  bool allOccurrences
#
#void
#wxMozillaBrowser::StopSpellChecker()
