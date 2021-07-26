class EditorialsController < InheritedResources::Base

  private

    def editorial_params
      params.require(:editorial).permit(:nombre)
    end

end
